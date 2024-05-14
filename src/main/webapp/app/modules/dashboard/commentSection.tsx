import './commentSection.scss';

import React, { useEffect, useState } from 'react';
import { useSelector } from 'react-redux';
import { useLocation, useParams } from 'react-router';
import Likebutton from './likes/likebutton';
import app from 'app/app';

interface Comment {
  id: string;
  text: string;
  posted_at: string;
  author: string;
  login: string;
  video: string;
}

interface CommentSectionProps {
  videoId?: string;
}

function CommentSection({ videoId }: CommentSectionProps) {
  const [comments, setComments] = useState<Comment[]>([]);
  const [commentBody, setCommentBody] = useState('');
  const { id } = useParams<{ id: string }>();
  // const [movieID, setMovieID] = useState('');

  const fetchComments = async () => {
    try {
      console.log('parseInt: ' + videoId);
      // const myVideoId: bigint = 1111873n;
      const response = await fetch(`/api/comments/comment-by-video/${videoId}?videoId=` + videoId);
      if (!response.ok) {
        throw new Error('Failed to fetch comments');
      }
      const data = await response.json();
      setComments(data);
      console.log(data);
      console.log(comments);
      console.log('/api/comments/comment-by-video/' + videoId);
    } catch (error) {
      console.error('Error fetching comments', error);
    }
  };

  useEffect(() => {
    console.log('this is' + id);
    fetchComments();
  }, [id]);

  const currentUser = useSelector((state: any) => state.authentication.account);
  const location = useLocation();
  // const isMoviePage = location.pathname.startsWith('/movie/653346');

  const submitComment = async () => {
    try {
      const response = await fetch('/api/comments', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          text: commentBody,
          postedAt: new Date().toISOString(),
          author: { id: currentUser.id, login: currentUser.login },
          video: { id },
        }),
      });

      if (!response.ok) {
        throw new Error('Failed to submit comment');
      }

      const newComment = await response.json();
      setComments(prevComments => [newComment, ...prevComments]);
      setCommentBody('');
    } catch (error) {
      console.error('Error submitting comment', error);
    }
  };
  console.log('this is my: ', currentUser.Login);

  return (
    <div>
      <input
        value={commentBody}
        onChange={event => setCommentBody(event.target.value)}
        className="comment-input"
        placeholder="Leave a Comment"
      />
      <button className="submit-button" onClick={submitComment as any}>
        Submit
      </button>
      <Likebutton userId={1} videoId={Number(id)} />
      <div>
        {comments.map(comment => (
          <div className="comments" key={comment.id}>
            <strong>{currentUser.login}</strong>: {comment.text}
          </div>
        ))}
      </div>
    </div>
  );
}

export default CommentSection;
