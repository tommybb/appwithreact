// HelloWorldWidget is an arbitrary name for any "dumb" component. We do not recommend suffixing
// all your dump component names with Widget.

import React, { PropTypes } from 'react';
import _ from 'lodash';
import { Input } from 'react-bootstrap';

// Simple example of a React "dumb" component
export default class HelloWorldWidget extends React.Component {

  constructor(props, context) {
    super(props, context);
    this.state = {name: 'Unknown'};
    // Uses lodash to bind all methods to the context of the object instance, otherwise
    // the methods defined here would not refer to the component's class, not the component
    // instance itself.
    _.bindAll(this, 'handleNameChange', 'handleSurnameChange', 'handleDistanceChange', 'handleFuelConsumedChange', 'calculateConsumption', 'updateName', 'updateSurname', 'updateDistance', 'updateFuelConsumed');
  }

  // React will automatically provide us with the event `e`
  handleNameChange(e) {
    const name = e.target.value;
    this.updateName(name);
  }

  handleSurnameChange(e) {
    const surname = e.target.value;
    this.updateSurname(surname);
  }

  handleDistanceChange(e) {
    const distance = parseInt(e.target.value);
    this.updateDistance(distance);
    this.calculateConsumption(this.state.fuelConsumed, distance);
  }

  handleFuelConsumedChange(e) {
    const fuelConsumed = parseInt(e.target.value);
    this.updateFuelConsumed(fuelConsumed);
    this.calculateConsumption(fuelConsumed, this.state.distance);
  }

  calculateConsumption(fuelConsumed, distance) {
    const consumption = ((fuelConsumed * 100) / distance);
    this.setState({ consumption });
  }

  updateName(name) {
    this.setState({ name });
  }

  updateSurname(surname) {
    this.setState({ surname });
  }

  updateDistance(distance) {
    this.setState({ distance });
  }

  updateFuelConsumed(fuelConsumed) {
    this.setState({ fuelConsumed });
  }

  render() {
    const { name, surname, distance, fuelConsumed, consumption } = this.state;
    return (
      <div className="container">
        <h3>
          <p>Hello, {name} {surname}, you run {distance} km and burned {fuelConsumed} litres of fuel!!!</p>
          <p>Your car needs {consumption} litres every 100km !!</p>
        </h3>
        <hr/>
        <form className="form-horizontal">
            <Input
              type="text"
              labelClassName="col-sm-2"
              wrapperClassName="col-sm-10"
              label="Name"
              value={name}
              onChange={this.handleNameChange}
            />
            <Input
              type="text"
              labelClassName="col-sm-2"
              wrapperClassName="col-sm-10"
              label="Surname"
              value={surname}
              onChange={this.handleSurnameChange}
            />
            <Input
              type="number"
              labelClassName="col-sm-2"
              wrapperClassName="col-sm-10"
              label="Distance"
              value={distance}
              onChange={this.handleDistanceChange}
            />
            <Input
              type="number"
              labelClassName="col-sm-2"
              wrapperClassName="col-sm-10"
              label="Fuel Consumed"
              value={fuelConsumed}
              onChange={this.handleFuelConsumedChange}
            />
        </form>
      </div>
    );
  }
}
