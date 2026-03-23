.class public Lcom/roblox/client/feature/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Lcom/roblox/client/feature/c;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.appshell"

    .line 19
    iput-object v0, p0, Lcom/roblox/client/feature/a;->a:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/roblox/client/feature/a;->b:Lcom/roblox/client/feature/c;

    .line 26
    iput p2, p0, Lcom/roblox/client/feature/a;->c:I

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 52
    const-class v0, Lcom/roblox/client/feature/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(J)Lcom/roblox/engine/b/b;
    .locals 3

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance p2, Lcom/roblox/engine/b/b;

    const-string v0, "AppShellNotifications"

    const-string v1, "StartConversationWithUserId"

    const-string v2, "Chat"

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/roblox/engine/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method protected a(Ljava/lang/String;)Lcom/roblox/engine/b/c;
    .locals 1

    .line 123
    new-instance v0, Lcom/roblox/engine/b/d;

    invoke-direct {v0, p1}, Lcom/roblox/engine/b/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->b()Lcom/roblox/client/game/a;

    move-result-object v0

    const-string v1, "rbx.appshell"

    if-nez v0, :cond_0

    const-string v0, "onShow: Create a GL fragment for LuaApp..."

    .line 32
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/roblox/client/game/a;

    invoke-direct {v0}, Lcom/roblox/client/game/a;-><init>()V

    .line 36
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShow: ... state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", IsLoggedIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/s/h;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/feature/a;->b:Lcom/roblox/client/feature/c;

    iget v1, p0, Lcom/roblox/client/feature/a;->c:I

    invoke-direct {p0}, Lcom/roblox/client/feature/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/roblox/client/feature/c;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/roblox/engine/b/b;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/b/b;)V

    return-void
.end method

.method protected a(Lcom/roblox/engine/b/c;)V
    .locals 1

    .line 101
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/b/c;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/b;->i()V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/roblox/client/game/a;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/roblox/client/feature/a;->b:Lcom/roblox/client/feature/c;

    invoke-direct {p0}, Lcom/roblox/client/feature/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/roblox/client/game/a;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/roblox/client/game/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(J)Lcom/roblox/engine/b/b;
    .locals 3

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance p2, Lcom/roblox/engine/b/b;

    const-string v0, "AppShellNotifications"

    const-string v1, "StartConversationWithId"

    const-string v2, "Chat"

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/roblox/engine/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method protected b(Lcom/roblox/client/feature/FeatureState;)V
    .locals 8

    .line 66
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAT_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "rbx.appshell"

    if-eqz v0, :cond_1

    const-string v0, "sendAppEvents() start chat"

    .line 68
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Chat"

    .line 69
    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/a;->a(Ljava/lang/String;)Lcom/roblox/engine/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/engine/b/c;)V

    const-string v0, "USER_ID_EXTRA"

    const-wide/16 v2, -0x1

    .line 72
    invoke-virtual {p1, v0, v2, v3}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "CHAT_CONVERSATION_ID"

    .line 73
    invoke-virtual {p1, v0, v2, v3}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p1, v4, v2

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendAppEvents() userId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, v4, v5}, Lcom/roblox/client/feature/a;->a(J)Lcom/roblox/engine/b/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/engine/b/b;)V

    goto :goto_0

    :cond_0
    cmp-long p1, v6, v2

    if-eqz p1, :cond_4

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendAppEvents() conversationId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, v6, v7}, Lcom/roblox/client/feature/a;->b(J)Lcom/roblox/engine/b/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/engine/b/b;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AVATAR_EDITOR_TAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "sendAppEvents() start avatar"

    .line 85
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AvatarEditor"

    .line 86
    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Ljava/lang/String;)Lcom/roblox/engine/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/engine/b/c;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HOME_TAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "sendAppEvents() start home"

    .line 90
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Home"

    .line 91
    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Ljava/lang/String;)Lcom/roblox/engine/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/engine/b/c;)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GAMES_TAG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "sendAppEvents() start games"

    .line 95
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Games"

    .line 96
    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Ljava/lang/String;)Lcom/roblox/engine/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/engine/b/c;)V

    :cond_4
    :goto_0
    return-void
.end method
