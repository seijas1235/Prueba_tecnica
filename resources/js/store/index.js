export default {
	state: {
		notifications: '',
		status: false
	},
	actions: {
		getNofifications(context){
			if(window.Laravel.userId){
				axios.post('/notifications').then(response => {
					context.commit("notifications",response.data)
				});
			}
		}
	},
	mutations: {
		notifications(state,data){
			state.notifications = data
			state.status = (state.notifications.length > 0) ? true : false;

			return state
		}
	}
}
