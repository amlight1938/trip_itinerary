import React, { Component } from "react";
import { Button } from "react-bootstrap";
import axios from "axios";

class RegistrationOrLogin extends Component {
  constructor(props) {
    super(props);

    this.isRegistration= props.registration;
    
    this.state = {
      username: "",
      password: "",
      password_confirmation: "",
      errors: "",
    }

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleSubmit(event) {
    
    const {username, password, password_confirmation} = this.state;
    let user = {
      username: username,
      password: password,
      password_confirmation: password_confirmation
    };

    let api_url;
    if(this.isRegistration){
      api_url = 'http://localhost:3001/api/v1/registrations'
    }else{
      api_url = 'http://localhost:3001/api/v1/sessions'
    }

    axios
      .post(api_url, 
        {user},
        {withCredentials: true})
      .then(response => {
        if(response.data.status === 'created'){
          this.props.handleSuccessfulAuthentication(response.data)
        }else{
          this.setState({
            errors: response.data.errors
          })
        }
        console.log('registration response: ', response)
      })
      .catch(error => {
        console.log('registration error: ', error)
      })

    event.preventDefault();
  }

  handleChange(event) {
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

          {this.isRegistration &&
            <input
              type="password"
              name="password_confirmation"
              placeholder="Password confirmation"
              value={this.state.password_confirmation}
              onChange={this.handleChange}
              required
            />
          }

          <Button variant="outline-primary" type="submit">{this.isRegistration ? 'Create Account' : 'Login'}</Button>
        </form>  
      </div>
    );
  }
}

export default RegistrationOrLogin;
