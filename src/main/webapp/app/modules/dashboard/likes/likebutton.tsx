import './likebutton.scss';

import React, { useEffect, useState } from 'react';
import { AiFillLike, AiFillDislike } from 'react-icons/ai';
import { countLikes, createLike } from './likeservice'; // Ensure the path is correct based on your project structure

interface LikeButtonProps {
  userId: number;
  videoId: number;
}

const LikeButton: React.FC<LikeButtonProps> = ({ userId, videoId }) => {
  const [liked, setLiked] = useState(false);
  const [likeCount, setLikeCount] = useState(0);

  useEffect(() => {
    const fetchLikeCount = async () => {
      try {
        const response = await countLikes(videoId);
        setLikeCount(response.data);
      } catch (error) {
        // eslint-disable-next-line no-console
        console.log('Error fetching like count:', error);
      }
    };
    fetchLikeCount().catch(error => console.error('Error in fetchLikeCount:', error));
  }, [userId, videoId]);

  const handleClick = async () => {
    // eslint-disable-next-line no-console
    console.log('Button clicked'); // Debugging log
    if (!liked) {
      try {
        const likedAt = new Date().toISOString();
        const like = { user: { id: userId }, video: { id: videoId }, likedAt };
        await createLike(like);
        setLiked(true);
        setLikeCount(likeCount + 1);
        // eslint-disable-next-line no-console
        console.log('Like created'); // Debugging log
      } catch (error) {
        console.error('Error liking the video:', error);
      }
    }
  };

  return (
    <span className="like-counter">
      {likeCount} {likeCount === 1 ? 'like' : 'likes'}
      <div>
        <button onClick={handleClick} style={{ border: 'none', background: 'none', marginLeft: '272px' }}>
          {liked ? <AiFillLike color="blue" size="50" /> : <AiFillDislike color="red" size="50" />}
        </button>
      </div>
    </span>
  );
};

export default LikeButton;
