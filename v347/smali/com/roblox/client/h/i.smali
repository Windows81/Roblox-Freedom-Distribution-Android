.class public Lcom/roblox/client/h/i;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# instance fields
.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/roblox/client/h/i;->d:J

    .line 21
    iput-wide p3, p0, Lcom/roblox/client/h/i;->e:J

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;

    iget-wide v2, p0, Lcom/roblox/client/h/i;->d:J

    iget-wide v4, p0, Lcom/roblox/client/h/i;->e:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
