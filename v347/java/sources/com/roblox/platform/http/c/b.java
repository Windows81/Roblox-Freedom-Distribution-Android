package com.roblox.platform.http.c;

import b.ac;
import com.roblox.platform.http.postbody.chat.AddToConversationPostBody;
import com.roblox.platform.http.postbody.chat.MarkAsReadPostBody;
import com.roblox.platform.http.postbody.chat.RemoveFromConversationPostBody;
import com.roblox.platform.http.postbody.chat.RenameGroupConversationPostBody;
import com.roblox.platform.http.postbody.chat.SendMessagePostBody;
import com.roblox.platform.http.postbody.chat.StartGroupConversationPostBody;
import com.roblox.platform.http.postbody.chat.StartOneToOneConversationPostBody;
import com.roblox.platform.http.postbody.chat.UpdateUserTypingStatusPostBody;
import d.b.o;
import d.b.t;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface b {
    @d.b.f(a = "/v2/get-unread-conversation-count")
    d.b<ac> a();

    @d.b.f(a = "/v2/get-user-conversations")
    d.b<ac> a(@t(a = "pageNumber") int i, @t(a = "pageSize") int i2);

    @d.b.f(a = "/v2/get-messages")
    d.b<ac> a(@t(a = "conversationId") long j, @t(a = "pageSize") int i, @t(a = "exclusiveStartMessageId") String str);

    @o(a = "/v2/add-to-conversation")
    d.b<ac> a(@d.b.a AddToConversationPostBody addToConversationPostBody);

    @o(a = "/v2/mark-as-read")
    d.b<ac> a(@d.b.a MarkAsReadPostBody markAsReadPostBody);

    @o(a = "/v2/remove-from-conversation")
    d.b<ac> a(@d.b.a RemoveFromConversationPostBody removeFromConversationPostBody);

    @o(a = "/v2/rename-group-conversation")
    d.b<ac> a(@d.b.a RenameGroupConversationPostBody renameGroupConversationPostBody);

    @o(a = "/v2/send-message")
    d.b<ac> a(@d.b.a SendMessagePostBody sendMessagePostBody);

    @o(a = "/v2/start-group-conversation")
    d.b<ac> a(@d.b.a StartGroupConversationPostBody startGroupConversationPostBody);

    @o(a = "/v2/start-one-to-one-conversation")
    d.b<ac> a(@d.b.a StartOneToOneConversationPostBody startOneToOneConversationPostBody);

    @o(a = "/v2/update-user-typing-status")
    d.b<ac> a(@d.b.a UpdateUserTypingStatusPostBody updateUserTypingStatusPostBody);

    @d.b.f(a = "/v2/get-conversations")
    d.b<ac> a(@t(a = "conversationIds") List<Long> list);

    @d.b.f(a = "/v2/multi-get-latest-messages")
    d.b<ac> a(@t(a = "conversationIds") List<Long> list, @t(a = "pageSize") int i);

    @d.b.f(a = "/v2/chat-settings")
    d.b<ac> b();

    @d.b.f(a = "/v2/get-rollout-settings")
    d.b<ac> b(@t(a = "featureNames") List<String> list);
}
