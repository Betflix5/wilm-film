import './header.scss';

import React from 'react';
import { Translate } from 'react-jhipster';

import { NavItem, NavLink, NavbarBrand } from 'reactstrap';
import { NavLink as Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

export const BrandIcon = props => (
  <div {...props} className="brand-icon">
    <img src="/content/images/d55b39bce988ccc457e8a9e01322cb5a.png" alt="Logo" />
  </div>
);

export const Brand = () => (
  <NavbarBrand tag={Link} to="/" className="brand-logo">
    <BrandIcon />
    <img src="/content/images/WilmFilm.png" style={{ height: '60px', width: '60px' }}></img>
  </NavbarBrand>
);

export const Home = () => (
  <NavItem>
    <NavLink tag={Link} to="/" className="d-flex align-items-center">
      <FontAwesomeIcon icon="home" />
      <span className="home-title">
        <Translate contentKey="global.menu.home">Home</Translate>
      </span>
    </NavLink>
  </NavItem>
);
