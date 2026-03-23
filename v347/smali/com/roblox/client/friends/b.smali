.class public Lcom/roblox/client/friends/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/support/v4/app/l;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/c;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/roblox/client/friends/b;->a:I

    .line 23
    invoke-virtual {p1}, Landroid/support/v7/app/c;->e()Landroid/support/v4/app/l;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/friends/b;->b:Landroid/support/v4/app/l;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/roblox/client/friends/b;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/friends/b;->a:I

    .line 32
    invoke-static {}, Lcom/roblox/client/contacts/h;->a()Lcom/roblox/client/contacts/h;

    move-result-object v2

    const-string v3, "FragmentContacts"

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 35
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/roblox/client/friends/b;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/friends/b;->a:I

    .line 94
    invoke-static {p1, p2}, Lcom/roblox/client/friends/a;->a(II)Lcom/roblox/client/friends/a;

    move-result-object v2

    const-string v3, "AppSettingsFragment"

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 97
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/roblox/client/friends/b;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/friends/b;->a:I

    .line 41
    invoke-static {}, Lcom/roblox/client/friends/a/a;->a()Lcom/roblox/client/friends/a/a;

    move-result-object v2

    const-string v3, "FragmentContactsPresentation"

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 44
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/roblox/client/friends/b;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/friends/b;->a:I

    .line 58
    invoke-static {}, Lcom/roblox/client/friends/b/a;->a()Lcom/roblox/client/friends/b/a;

    move-result-object v2

    const-string v3, "FragmentNearbyPresentation"

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 61
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/roblox/client/n;

    invoke-direct {v0}, Lcom/roblox/client/n;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v2, "DEFAULT_URL"

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getUserFriendRequestOnlyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lcom/roblox/client/friends/b;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/friends/b;->a:I

    const-string v3, "PendingRequestsFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 80
    return-void
.end method
