import { connect } from 'react-redux'
import { fetchBooks, fetchBook} from '../../actions/book_actions'
import Book from './show_books'

const mapStateToProps = ({session, entities: { books }}) => {
    return {
        currentUser: users[session.id]

    }
}

const mapDispatchToProps = dispatch => ({
    fetchBooks: () => dispatch(fetchBooks()),
})

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(showBook)
