.class public Lcom/roblox/client/feature/a;
.super Lcom/roblox/client/feature/l;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/roblox/client/feature/c;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p2}, Lcom/roblox/client/feature/l;-><init>(Ljava/lang/String;)V

    .line 21
    iput v0, p0, Lcom/roblox/client/feature/a;->a:I

    .line 22
    iput v0, p0, Lcom/roblox/client/feature/a;->b:I

    .line 31
    iput-object p1, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    .line 32
    iput p3, p0, Lcom/roblox/client/feature/a;->d:I

    .line 33
    return-void
.end method

.method private a(JJZZ)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 42
    if-nez p6, :cond_0

    .line 43
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/c;

    invoke-direct {v1}, Lcom/roblox/client/h/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 47
    :cond_0
    if-nez p5, :cond_3

    .line 48
    iget-object v0, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    const-string v1, "DISABLED_FRAGMENT"

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/roblox/client/chat/i;

    invoke-direct {v0}, Lcom/roblox/client/chat/i;-><init>()V

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    iget v2, p0, Lcom/roblox/client/feature/a;->d:I

    const-string v3, "DISABLED_FRAGMENT"

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_0
    return-void

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->f()Lcom/roblox/client/chat/h;

    move-result-object v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    new-instance v0, Lcom/roblox/client/chat/h;

    invoke-direct {v0}, Lcom/roblox/client/chat/h;-><init>()V

    .line 59
    cmp-long v1, p1, v4

    if-eqz v1, :cond_4

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "START_CONVERSATION_ID_EXTRA"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/h;->setArguments(Landroid/os/Bundle;)V

    .line 72
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    iget v2, p0, Lcom/roblox/client/feature/a;->d:I

    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 74
    cmp-long v0, p3, v4

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Lcom/roblox/client/h/j;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lcom/roblox/client/h/j;-><init>(JLcom/roblox/client/h/j$a;)V

    .line 77
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {v0}, Lcom/roblox/client/chat/h;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    cmp-long v1, p1, v4

    if-eqz v1, :cond_4

    .line 66
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/roblox/client/chat/a/a;->c(J)Lcom/roblox/client/chat/a/d;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    new-instance v2, Lcom/roblox/client/e/g;

    invoke-direct {v2, v1}, Lcom/roblox/client/e/g;-><init>(Lcom/roblox/client/chat/a/d;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/h;->onChatNewConversationEvent(Lcom/roblox/client/e/g;)V

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 36
    move-object v1, p0

    move-wide v4, v2

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/feature/a;->a(JJZZ)V

    .line 37
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->f()Lcom/roblox/client/chat/h;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    if-eqz p1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->c(Landroid/support/v4/app/Fragment;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    const-string v1, "DISABLED_FRAGMENT"

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->c(Landroid/support/v4/app/Fragment;)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/feature/a;->b(Z)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/feature/a;->h()V

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 83
    const-string v0, "CHAT_CONVERSATION_ID"

    invoke-virtual {p1, v0, v4, v5}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 84
    const-string v0, "USER_ID_EXTRA"

    invoke-virtual {p1, v0, v4, v5}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 85
    const-string v0, "CHAT_FORCE_OPEN_CONVERSATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;Z)Z

    move-result v7

    .line 86
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->h()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/feature/a;->a(JJZZ)V

    .line 87
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/roblox/client/feature/a;->h()V

    .line 134
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/feature/a;->a(ZZ)V

    .line 135
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/feature/a;->b(Z)V

    .line 118
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->f()Lcom/roblox/client/chat/h;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/roblox/client/chat/h;->d()Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/roblox/client/chat/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/roblox/client/chat/h;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/roblox/client/feature/a;->c:Lcom/roblox/client/feature/c;

    invoke-virtual {p0}, Lcom/roblox/client/feature/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 158
    instance-of v1, v0, Lcom/roblox/client/chat/h;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/roblox/client/chat/h;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "tabChat"

    return-object v0
.end method
