import PropTypes from 'prop-types';
import React from 'react';

export default class HelloWorld extends React.Component {
  /**
   * @param props - Comes from your rails view.
   * @param _railsContext - Comes from React on Rails
   */
  constructor(props, _railsContext) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { users: [] };
  }

  componentDidMount() {
    this.getUsers();
  }

  getUsers() {
    fetch('/users')
      .then(users => users.json())
      .then(responseJSON => this.setState({users: responseJSON}))
  }

  renderUsers(users) {
    return users.map((user) => {
      return (
        <li
          key={user.id}
        >
          <ul>
            <li>{user.email}</li>
            <li>Income: {user.annual_income}</li>
            <li>Pledge %: {user.pledge_percentage * 100}</li>
            <li>Total donations: {user.donated}</li>
            <li>Left to donate: {user.left_to_donate}</li>
          </ul>
        </li>
      )
    })
  }

  render() {
    return (
      <div>
        <ul>
          {this.renderUsers(this.state.users)}
        </ul>
      </div>
    );
  }
}
