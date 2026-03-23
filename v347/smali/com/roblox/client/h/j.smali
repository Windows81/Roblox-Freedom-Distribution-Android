.class public Lcom/roblox/client/h/j;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/j$a;
    }
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/roblox/client/h/j$a;


# direct methods
.method public constructor <init>(JLcom/roblox/client/h/j$a;)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p3}, Lcom/roblox/client/h/j;-><init>(Ljava/util/ArrayList;Lcom/roblox/client/h/j$a;)V

    .line 34
    iget-object v0, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/roblox/client/h/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/roblox/client/h/j$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/roblox/client/h/j;->e:Lcom/roblox/client/h/j$a;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/j;)Lcom/roblox/client/h/j$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/roblox/client/h/j;->e:Lcom/roblox/client/h/j$a;

    return-object v0
.end method

.method private a(ZJLjava/lang/String;)V
    .locals 8

    .prologue
    .line 91
    iget-object v0, p0, Lcom/roblox/client/h/j;->e:Lcom/roblox/client/h/j$a;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/roblox/client/h/j;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/j$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/j$1;-><init>(Lcom/roblox/client/h/j;ZJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/roblox/client/h/j;->a(ZJLjava/lang/String;)V

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/client/e/g;-><init>(Lcom/roblox/client/chat/a/d;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "Could not start conversation"

    invoke-direct {p0, v0}, Lcom/roblox/client/h/j;->b(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public g()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 44
    iget-object v0, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 46
    :cond_0
    const-string v0, "No users selected"

    invoke-direct {p0, v0}, Lcom/roblox/client/h/j;->b(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 52
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/StartGroupConversationPostBody;

    iget-object v2, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/roblox/platform/http/postbody/chat/StartGroupConversationPostBody;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/StartGroupConversationPostBody;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 58
    :goto_1
    invoke-virtual {v0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v0, "resultType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v2, "statusMessage"

    const-string v3, "Could not start conversation"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v3, "Success"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "conversation"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/roblox/client/chat/a/d;

    invoke-direct {v1, v0}, Lcom/roblox/client/chat/a/d;-><init>(Lorg/json/JSONObject;)V

    .line 69
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/roblox/client/chat/a/a;->a(Lcom/roblox/client/chat/a/d;Z)V

    .line 71
    invoke-virtual {v1}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v4

    invoke-direct {p0, v6, v4, v5, v2}, Lcom/roblox/client/h/j;->a(ZJLjava/lang/String;)V

    .line 72
    new-instance v0, Lcom/roblox/client/e/g;

    invoke-direct {v0, v1}, Lcom/roblox/client/e/g;-><init>(Lcom/roblox/client/chat/a/d;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v1

    new-instance v2, Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;

    iget-object v0, p0, Lcom/roblox/client/h/j;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;-><init>(J)V

    invoke-interface {v1, v2}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    goto/16 :goto_1

    .line 76
    :cond_3
    const-string v0, "Could not start conversation"

    invoke-direct {p0, v0}, Lcom/roblox/client/h/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
