import React from "react";

import { Route, Switch, BrowserRouter as Router } from "react-router-dom";

import Dashboard from "./components/Dashboard";
import Create from "./components/Tasks/Create";

const App = () => (
  <Router>
    <Switch>
      <Route exact path="/" render={() => <div>Home</div>} />
      <Route exact component={Create} path="/tasks/create" />
      <Route exact component={Dashboard} path="/dashboard" />
    </Switch>
  </Router>
);

export default App;
