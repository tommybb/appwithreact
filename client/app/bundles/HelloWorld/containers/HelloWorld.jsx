import React, { PropTypes } from 'react';
import HelloWorldWidget from '../components/HelloWorldWidget';
import _ from 'lodash';

// Simple example of a React "smart" component
export default class HelloWorld extends React.Component {
  static propTypes = {

  };

  constructor(props, context) {
    super(props, context);

  }

  render() {
    return (
      <div>
        <HelloWorldWidget
        />
      </div>
    );
  }
}
