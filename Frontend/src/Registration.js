import React, { Component } from "react";
import { Button } from "react-bootstrap";

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
      fetch('http://localhost:3001/api/v1/registrations',{
        method: 'POST',
        user:{
          username: this.state.username,
          password: this.state.password,
          password_confirmation: this.state.password_confirmation
        },
        withCredentials: true})
      .then(response => response.json())
      .then(api_package => console.log(api_package))
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
