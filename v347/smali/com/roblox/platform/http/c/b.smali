.class public interface abstract Lcom/roblox/platform/http/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Ld/b;
    .annotation runtime Ld/b/f;
        a = "/v2/get-unread-conversation-count"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(II)Ld/b;
    .param p1    # I
        .annotation runtime Ld/b/t;
            a = "pageNumber"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ld/b/t;
            a = "pageSize"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/v2/get-user-conversations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(JILjava/lang/String;)Ld/b;
    .param p1    # J
        .annotation runtime Ld/b/t;
            a = "conversationId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ld/b/t;
            a = "pageSize"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/t;
            a = "exclusiveStartMessageId"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/v2/get-messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/add-to-conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/mark-as-read"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/remove-from-conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/rename-group-conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/send-message"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/StartGroupConversationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/StartGroupConversationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/start-group-conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/StartGroupConversationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/start-one-to-one-conversation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/update-user-typing-status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Ld/b;
    .param p1    # Ljava/util/List;
        .annotation runtime Ld/b/t;
            a = "conversationIds"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/v2/get-conversations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;I)Ld/b;
    .param p1    # Ljava/util/List;
        .annotation runtime Ld/b/t;
            a = "conversationIds"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ld/b/t;
            a = "pageSize"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/v2/multi-get-latest-messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Ld/b;
    .annotation runtime Ld/b/f;
        a = "/v2/chat-settings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)Ld/b;
    .param p1    # Ljava/util/List;
        .annotation runtime Ld/b/t;
            a = "featureNames"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/v2/get-rollout-settings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method
