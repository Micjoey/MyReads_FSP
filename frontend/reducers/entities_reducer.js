import { combineReducers } from 'redux';

import users from './users_reducer';
import UsersReducer from './users_reducer';

export default combineReducers({
  books: bookReducer,
  // bookshelf,
  // reviews,
  users: UsersReducer
});
