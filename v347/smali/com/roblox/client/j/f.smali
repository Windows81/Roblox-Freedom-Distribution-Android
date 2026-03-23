.class public Lcom/roblox/client/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/j/e$a;


# instance fields
.field private a:Lcom/roblox/client/n;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/n;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/roblox/client/j/f;->a:Lcom/roblox/client/n;

    .line 29
    iget-object v0, p0, Lcom/roblox/client/j/f;->a:Lcom/roblox/client/n;

    const v1, 0x7f0e01be

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j/f;->c:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/roblox/client/j/f;->a:Lcom/roblox/client/n;

    const v1, 0x7f0e01c0

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j/f;->d:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/roblox/client/j/f;->a:Lcom/roblox/client/n;

    const v1, 0x7f0e01bd

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j/f;->e:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/roblox/client/j/f;->a:Lcom/roblox/client/n;

    const v1, 0x7f0e01bf

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j/f;->f:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/roblox/client/j/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/j/f;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/j/f;->a:Lcom/roblox/client/n;

    invoke-virtual {v0}, Lcom/roblox/client/n;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/roblox/client/j/f;->b()I

    move-result v0

    .line 38
    packed-switch v0, :pswitch_data_0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/j/f;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/j/f;->d:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/j/f;->e:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/j/f;->f:Ljava/lang/String;

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/support/v7/widget/SearchView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/roblox/client/e/aa;

    invoke-virtual {p0}, Lcom/roblox/client/j/f;->b()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/roblox/client/e/aa;-><init>(ILjava/lang/String;)V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->onActionViewCollapsed()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/roblox/client/j/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    const-string v2, "profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "friends"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "users"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 70
    :cond_1
    :goto_0
    return v0

    .line 60
    :cond_2
    const-string v2, "games"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const-string v2, "catalog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    const/4 v0, 0x3

    goto :goto_0

    .line 66
    :cond_3
    const-string v2, "groups"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/roblox/client/j/f;->b:Ljava/lang/String;

    .line 79
    return-void
.end method
