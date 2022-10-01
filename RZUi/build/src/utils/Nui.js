export default {
    async send(event, data = {}) {
        // return await new Promise(resolve => setTimeout(resolve, 100));
        const resource = "RZUi";
        return await fetch(`https://${resource}/${event}`, {
            method: "post",
            headers: {
                "Content-type": "application/json; charset=UTF-8",
            },
            body: JSON.stringify(data),
        });
    },
};