import './aboutus.scss';
import React from 'react';

export const TreyIcon = treyProps => (
  <div>
    <a href="#">
      <img src="/content/images/trey2.JPG" alt="Trey" style={{ width: '15vw', paddingTop: '5px' }} />
    </a>
  </div>
);

export const MichaelIcon = michaelProps => (
  <div>
    <img src="/content/images/michael2.JPG" alt="Michael" style={{ width: '15vw', paddingTop: '5px' }} />
  </div>
);

export const AnthonyIcon = anthonyProps => (
  <div>
    <a href="#">
      <img src="/content/images/anthony2.JPG" alt="Anthony" style={{ width: '15vw', paddingTop: '5px' }} />
    </a>
  </div>
);

export const ChazIcon = chazProp => (
  <div>
    <a href="#">
      <img src="/content/images/chaz2.jpg" alt="Chaz" style={{ width: '15vw', paddingTop: '5px' }} />
    </a>
  </div>
);

export const AliIcon = aliProps => (
  <div>
    <a href="#">
      <img src="/content/images/ali2.JPG" alt="Ali" style={{ width: '15vw', paddingTop: '5px' }} />
    </a>
  </div>
);

const AboutUs = () => {
  return (
    <div className="about-section">
      <h1>WilmFilm Development Team</h1>
      <p>Tech Stack:</p>
      <p>React.js(HTML, CSS, JavaScript & TypeScript); Spring Boot; Java; Axios; AWS S3; Docker</p>

      <h2 style={{ textAlign: 'center' }}>Team Bodleian</h2>

      <div className="row">
        <div className="column">
          <div className="card">
            <ChazIcon />
            <div className="container">
              <h2 className="flname">Chaz Adams</h2>
              <p className="title">Software Developer</p>
              {/*<p className="aliText">*/}
              {/*  Mastering the intricacies of full-stack development. With experience as an airborne infantryman in the Army, I bring strong*/}
              {/*  teamwork, adaptability, and problem-solving skills to the table.*/}
              {/*</p>*/}
              <div className="chazspace"></div>
              <p>
                <a href="https://github.com/Chaz-Adams">
                  <button className="button">GitHub</button>
                </a>
                <a href="mailto:caadams1922@gmail.com">
                  <button className="button">Email</button>
                </a>
              </p>
            </div>
          </div>
        </div>

        <div className="column">
          <div className="card">
            <AliIcon />
            <div className="container">
              <h2 className="flname">Ali Bangash</h2>
              <p className="title">Software Developer</p>
              {/*<p className="aliText">*/}
              {/*  Embracing a journey of perpetual growth and evolution, I am dedicated to continually refining my expertise in software*/}
              {/*  engineering. Grounded in curiosity, adept listening, and effective communication, I approach each project with unwavering*/}
              {/*  determination, embracing challenges with a never-give-up spirit.*/}
              {/*</p>*/}
              <div className="space"></div>
              <p>
                <a href="https://github.com/ali-b14">
                  <button className="button">GitHub</button>
                </a>
                <a href="alib714@gmail.com">
                  <button className="button">Email</button>
                </a>
              </p>
            </div>
          </div>
        </div>

        <div className="column">
          <div className="card">
            <TreyIcon />
            <div className="container">
              <h2 className="flname">Trey Bruton</h2>
              <p className="title">Software Developer</p>
              {/*<p className="treyText">*/}
              {/*  Eager to learn and implement technical problem-solving skills to create change in the world. Serving the country as a 12N -*/}
              {/*  Heavy Construction Engineer, I plan to use the skills ingrained in me from my Army career in my future career as a Software*/}
              {/*  Developer.*/}
              {/*</p>*/}
              <div className="treyspace"></div>
              <p>
                <a href="https://github.com/tb0902">
                  <button className="button">GitHub</button>
                </a>
                <a href="mailto:tbruton417@gmail.com">
                  <button className="button">Email</button>
                </a>
              </p>
            </div>
          </div>
        </div>

        <div className="column">
          <div className="card">
            <MichaelIcon />
            <div className="container">
              <h2 className="flname">Michael Scott</h2>
              <p className="title">Software Developer</p>
              {/*<p className="michaelText">*/}
              {/*  Passionate about transitioning into a role as a Software Engineer, leveraging my background in Electronic Engineering and*/}
              {/*  customer service experiencee to drive innovative solutions and enhance user experiences.*/}
              {/*</p>*/}
              <div className="michaelspace"></div>
              <p>
                <a href="https://github.com/MichaelS0521">
                  <button className="button">GitHub</button>
                </a>
                <a href="mailto:mjscott2002@gmail.com">
                  <button className="button">Email</button>
                </a>
              </p>
            </div>
          </div>
        </div>

        <div className="column">
          <div className="card">
            <AnthonyIcon />
            <div className="container">
              <h2 className="flname">Anthony Pearson</h2>
              <p className="title">Software Developer</p>
              <p className="anthonyText">
                {' '}
                {/*Former U.S. Navy computer network technician with 10 years of experience working with Linux/Unix, electronic circuitry and*/}
                {/*computer hardware. I am a highly driven and goal oriented individual, currently enrolled in an intense Java software*/}
                {/*development bootcamp.{' '}*/}
              </p>
              <p>
                <a href="https://github.com/AnthonyP365">
                  <button className="button">GitHub</button>
                </a>
                <a href="mailto:apearson8385@gmail.com">
                  <button className="button">Email</button>
                </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AboutUs;
