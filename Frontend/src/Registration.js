import React, { Component } from "react";
import { Button } from "react-bootstrap";
import axios from "axios";

class Registration extends Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
      password_confirmation: "",
      registration_errors: "",
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleSubmit(event) {

    console.log(this.state)
    
    const {username, password, password_confirmation} = this.state;
    let user = {
      username: username,
      password: password,
      password_confirmation: password_confirmation
    };

    axios.post('http://localhost:3001/api/v1/registrations', 
    {user},
    {withCredentials: true})
    .then(response => {
      console.log('registration response: ', response)
    })
    .catch(error => {
      console.log('registration error: ', error)
    })

    event.preventDefault();
  }

  handleChange(event) {
    console.log("handle change", event);
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <input
            name="username"
            placeholder="Username"
            value={this.state.username}
            onChange={this.handleChange}
            required
          />

          <input
            type="password"
            name="password"
            placeholder="Password"
            value={this.state.password}
            onChange={this.handleChange}
            required
          />

          <input
            type="password"
            name="password_confirmation"
            placeholder="Password confirmation"
            value={this.state.password_confirmation}
            onChange={this.handleChange}
            required
          />

          <Button variant="outline-primary" type="submit">Create Account</Button>
        </form>  
      </div>
    );
  }
}

export default Registration;
