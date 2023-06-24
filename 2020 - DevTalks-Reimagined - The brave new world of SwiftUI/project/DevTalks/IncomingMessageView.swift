import SwiftUI

struct IncomingMessageView: View {
    var message: Message
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(message.sender).padding(.leading, 10).font(Font.caption)
                Text(message.content)
                    .foregroundColor(Color.white)
                    .font(Font.body).padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.8)))
                Text(message.status).padding(.leading, 10).padding(.top, 2).font(Font.footnote)
            }
            .padding(.top, 10)
            Spacer()
        }
    }
}


struct IncomingMessageView_Previews: PreviewProvider {
    static var previews: some View {
        IncomingMessageView(message: Message(id: "1", sender: "Alice", content: "Hello Cluj", direction: .incoming, wasDelivered: true, wasRead: true))
    }
}
