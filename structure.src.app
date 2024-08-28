import React from 'react';
import LoginForm from './components/LoginForm';
import Messages from './components/Messages';
import StaffProfileView from './components/StaffProfileView';
import TransactionView from './components/TransactionView';
import UpdateStudent from './components/UpdateStudent';
import AlumniSelection from './components/AlumniSelection';

function App() {
    return (
        <div>
            <h1>Alumni Platform</h1>
            <LoginForm />
            <Messages />
            <StaffProfileView profileType="student" email="student@example.com" />
            <TransactionView />
            <UpdateStudent studentEmail="student@example.com" />
            <AlumniSelection />
        </div>
    );
}

export default App;
