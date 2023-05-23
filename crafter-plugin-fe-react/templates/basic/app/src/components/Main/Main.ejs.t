---
to: <%= outputPath %>/<%= properties.name %>/src/components/Main/index.jsx
force: true
---
import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Main.css';

const Main = () => {
  const navigate = useNavigate();
  return (
    <div className='main-body'>
      <span>Frontend</span>
      <span>Boilerplate</span>
    </div>
  )
}

export default Main;
