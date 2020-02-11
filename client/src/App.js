import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import subpage from './subpage';
import Fib from './Fib';

function App() {
  return (
    <Router>
        <div className="App">
          <header className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <h1 className="App-title">Fib calculator version 2</h1>
            <Link to='/'>Home</Link>
            <Link to='/subpage'>Other page</Link>
          </header>
          <div>
            <Route exact path='/' component={Fib} />
            <Route path="/subpage" component={subpage} />
          </div>
        </div>
    </Router>
  );
}

export default App;
