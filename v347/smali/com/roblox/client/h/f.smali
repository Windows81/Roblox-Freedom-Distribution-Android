.class public Lcom/roblox/client/h/f;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/f$a;
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

.field private e:J

.field private f:Lcom/roblox/client/h/f$a;


# direct methods
.method public constructor <init>(JLjava/util/List;Lcom/roblox/client/h/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/roblox/client/h/f$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/h/f;->d:Ljava/util/ArrayList;

    .line 31
    iget-object v0, p0, Lcom/roblox/client/h/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    iput-wide p1, p0, Lcom/roblox/client/h/f;->e:J

    .line 33
    iput-object p4, p0, Lcom/roblox/client/h/f;->f:Lcom/roblox/client/h/f$a;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/f;)Lcom/roblox/client/h/f$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/h/f;->f:Lcom/roblox/client/h/f$a;

    return-object v0
.end method

.method private a(ZJLjava/lang/String;)V
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/roblox/client/h/f;->f:Lcom/roblox/client/h/f$a;

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/roblox/client/h/f;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/f$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/f$1;-><init>(Lcom/roblox/client/h/f;ZJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/roblox/client/h/f;->e:J

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/roblox/client/h/f;->a(ZJLjava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p1, Lcom/roblox/client/h/t$a;->b:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    const-string v0, "Could not add user"

    invoke-direct {p0, v0}, Lcom/roblox/client/h/f;->b(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/roblox/client/h/f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/h/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 46
    :cond_0
    const-string v0, "No users selected"

    invoke-direct {p0, v0}, Lcom/roblox/client/h/f;->b(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;

    iget-wide v2, p0, Lcom/roblox/client/h/f;->e:J

    iget-object v4, p0, Lcom/roblox/client/h/f;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;-><init>(JLjava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 52
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

    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v0, "resultType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v2, "statusMessage"

    const-string v3, "Could not add user"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "Success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/roblox/client/h/f;->e:J

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/roblox/client/h/f;->a(ZJLjava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, v1}, Lcom/roblox/client/h/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
