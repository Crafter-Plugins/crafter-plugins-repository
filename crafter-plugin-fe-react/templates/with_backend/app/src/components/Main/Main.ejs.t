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
      <%_ backends.forEach(backend => { _%>
      <button onClick={() => navigate('/ping/<%= backend.properties.name %>')}>ping <%= backend.properties.name %></button>
      <%_ }) _%>
    </div>
  )
}

export default Main;
