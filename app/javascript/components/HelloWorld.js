import React from "react";
import { connect } from 'react-redux';
import { createStructuredSelector } from 'reselect';

const GET_THINGS_REQUEST = 'GET_THINGS_REQUEST';
const GET_THINGS_SUCCESS = 'GET_THINGS_SUCCESS';

function getThings() {
  console.log('getThings() ACTION!!')
  return dispatch => {
    dispatch( {type: GET_THINGS_REQUEST });
    return fetch(`v1/things`)
      .then(response => response.json())
      .then(json => dispatch(getThingsSuccess(json)))
      .catch(error => console.log(error));
  };
};

export function getThingsSuccess(json) {
  return {
    type: GET_THINGS_SUCCESS,
    json
  }
}

class HelloWorld extends React.Component {
  render () {
    const { things } = this.props;
    const thingsList = things.map((thing, i) => {
      return <li key={i}>{thing.name} {thing.guid}</li>
    })
    return (

      <div>
        Greeting: {this.props.greeting}
        <div className="button-container">
          <button className="get-things-button" onClick={() => this.props.getThings()}>getThings</button>
        </div>
        <div className="things-list">
          <ul>{ thingsList }</ul>
        </div>
      </div>
    );
  }
}

const structuredSelector = createStructuredSelector({
  things: state => state.things,
});

const mapDispatchToProps = { getThings };

export default connect(structuredSelector, mapDispatchToProps)(HelloWorld)
