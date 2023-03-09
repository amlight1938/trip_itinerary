import React, { Component } from "react";
import { Button, Alert } from "react-bootstrap";
import axios from "axios";

class RegistrationOrLoginForm extends Component {
  constructor(props) {
    super(props);

    this.state = {
      username: "",
      password: "",
      password_confirmation: "",
      errors: "",
      isRegistration: false,
      showErrors: false
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
    if(this.state.isRegistration){
      api_url = 'https://trip-itinerary-backend-api.herokuapp.com/api/v1/registrations'
    }else{
      api_url = 'https://trip-itinerary-backend-api.herokuapp.com/api/v1/sessions'
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
            errors: response.data.errors,
            showErrors: true
          })
        }
        console.log('registration or login response: ', response)
      })
      .catch(error => {
        this.setState({
          errors: error.message,
          showErrors: true
        })
        console.log('registration or login error: ', error)
      })

    event.preventDefault();
    this.handleResetFields();
  }

  handleChange(event) {
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  changeToRegistration() {
    this.setState({
      isRegistration: true
    })

    this.handleResetFields();
  }

  changeToLogin() {
    this.setState({
      isRegistration: false
    })

    this.handleResetFields();
  }

  handleResetFields() {
    Array.from(document.querySelectorAll("input")).forEach(
      inputField => inputField.value = ""
    );
    this.setState({
      username: "",
      password: "",
      password_confirmation: "",
    });
  }

  hideErrors() {
    this.setState({
      showErrors: false
    })
  }

  render() {
    return (
      <div className="registration-form-div">
        {this.state.showErrors 
            &&  <Alert variant="danger" onClose={() => this.hideErrors()} dismissible>
                  <Alert.Heading>Oh snap! You got an error!</Alert.Heading>
                  <p>{this.state.errors}</p>
                </Alert>
        }

        <form onSubmit={this.handleSubmit}>
          <label htmlFor="uname">Username</label>
          <input 
            id="uname"
            className="inputField"
            name="username"
            placeholder="Username"
            value={this.state.username}
            onChange={this.handleChange}
            required
          />

          <label htmlFor="pword">Password</label>
          <input 
            id="pword"
            className="inputField"
            type="password"
            name="password"
            placeholder="Password"
            value={this.state.password}
            onChange={this.handleChange}
            required
          />

          {this.state.isRegistration &&
          <>
            <label htmlFor="pword_conf">Password Confirmation</label>
            <input
              id="pword_conf"
              className="inputField"
              type="password"
              name="password_confirmation"
              placeholder="Password confirmation"
              value={this.state.password_confirmation}
              onChange={this.handleChange}
              required
            />
          </>
          }

          <Button variant="outline-primary" style={{width: "100%", marginTop: "15px"}} type="submit">{this.state.isRegistration ? 'Create Account' : 'Login'}</Button>
        </form>  

        {this.state.isRegistration 
          ? <p className="text-button" onClick={() => this.changeToLogin()}>Sign in</p> 
          : <p className="text-button" onClick={() => this.changeToRegistration()}>Create an account</p> 
        }
      </div>
    );
  }
}

export default RegistrationOrLoginForm;
