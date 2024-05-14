package com.mycompany.myapp.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * A Video.
 */
@Entity
@Table(name = "video")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
@SuppressWarnings("common-java:DuplicatedBlocks")
public class Video implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "url")
    private String url;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "video")
    @JsonIgnoreProperties(value = "video", allowSetters = true)
    private Set<Comment> comments = new HashSet<>();

    @JsonIgnoreProperties(value = { "video" }, allowSetters = true)
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(unique = true)
    private VideoMetaData metaData;

    @ManyToOne(fetch = FetchType.LAZY)
    private User uploader;

    // jhipster-needle-entity-add-field - JHipster will add fields here

    public Set<Comment> getComments() {
        return comments;
    }

    public Video comments(Set<Comment> comments) {
        this.setComments(comments);
        return this;
    }

    public Video addComments(Comment comment) {
        this.comments.add(comment);
        comment.setVideo(this);
        return this;
    }

    public Video removeComments(Comment comment) {
        this.comments.remove(comment);
        comment.setVideo(null);
        return this;
    }

    public void setComments(Set<Comment> comments) {
        if (this.comments != null) {
            this.comments.forEach(comment -> comment.setVideo(this));
        }
        if (comments != null) {
            comments.forEach(comment -> comment.setVideo(null));
        }
        this.comments = comments;
    }

    public Long getId() {
        return this.id;
    }

    public Video id(Long id) {
        this.setId(id);
        return this;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return this.url;
    }

    public Video url(String url) {
        this.setUrl(url);
        return this;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public VideoMetaData getMetaData() {
        return this.metaData;
    }

    public void setMetaData(VideoMetaData videoMetaData) {
        this.metaData = videoMetaData;
    }

    public Video metaData(VideoMetaData videoMetaData) {
        this.setMetaData(videoMetaData);
        return this;
    }

    public User getUploader() {
        return this.uploader;
    }

    public void setUploader(User user) {
        this.uploader = user;
    }

    public Video uploader(User user) {
        this.setUploader(user);
        return this;
    }

    // jhipster-needle-entity-add-getters-setters - JHipster will add getters and setters here

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Video)) {
            return false;
        }
        return getId() != null && getId().equals(((Video) o).getId());
    }

    @Override
    public int hashCode() {
        // see https://vladmihalcea.com/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
        return getClass().hashCode();
    }

    // prettier-ignore
    @Override
    public String toString() {
        return "Video{" +
            "id=" + getId() +
            ", url='" + getUrl() + "'" +
            "}";
    }
}
