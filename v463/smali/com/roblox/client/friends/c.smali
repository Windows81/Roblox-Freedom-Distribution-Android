.class public Lcom/roblox/client/friends/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroidx/fragment/app/g;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/c;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lcom/roblox/client/friends/c;->a:I

    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/app/c;->j()Landroidx/fragment/app/g;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    .line 247
    iget-object v0, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private h()Landroidx/fragment/app/k;
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    iget-object v1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "NearbyNavigationController"

    if-eqz v0, :cond_1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    return-object v0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No visible fragment. ActiveFragmentTag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    return-object v0
.end method

.method private i()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    const-string v1, "PendingRequestsFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    const-string v1, "FragmentContacts"

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    const-string v1, "FragmentNearbyUsers"

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    const-string v1, "FragmentContacts"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/roblox/client/contacts/h;->aq()Lcom/roblox/client/contacts/h;

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v2

    .line 47
    iget v3, p0, Lcom/roblox/client/friends/c;->a:I

    .line 48
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->A()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    .line 60
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    return-void
.end method

.method public a(II)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Navigate to app settings from unknown context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/friends/c;->c()V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/friends/c;->f()V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v0

    .line 192
    iget v1, p0, Lcom/roblox/client/friends/c;->a:I

    .line 195
    invoke-static {p1, p2}, Lcom/roblox/client/friends/b;->a(II)Lcom/roblox/client/friends/b;

    move-result-object p1

    const-string p2, "AppSettingsFragment"

    .line 193
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()V

    .line 199
    iput-object p2, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 167
    sget v0, Lcom/roblox/client/o$j;->Features_UniversalFriender_Action_SearchByUsername:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/roblox/client/ActivitySearch;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x67

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 2

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    invoke-static {p2, p3}, Lcom/roblox/client/u;->c(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "URL_EXTRA"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x66

    .line 134
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    const-string v1, "FragmentContactsPresentation"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/roblox/client/friends/c;->c()V

    .line 67
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v0

    .line 68
    iget v2, p0, Lcom/roblox/client/friends/c;->a:I

    .line 71
    invoke-static {}, Lcom/roblox/client/friends/a/a;->aq()Lcom/roblox/client/friends/a/a;

    move-result-object v3

    .line 69
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    .line 76
    :cond_0
    iput-object v1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "FragmentContacts"

    .line 80
    invoke-direct {p0, v0}, Lcom/roblox/client/friends/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    const-string v1, "FragmentNearbyUsers"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/roblox/client/friends/nearby/a/b;->aq()Lcom/roblox/client/friends/nearby/a/b;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v2

    .line 92
    iget v3, p0, Lcom/roblox/client/friends/c;->a:I

    .line 93
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->A()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    .line 105
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    const-string v1, "FragmentNearbyPresentation"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/friends/c;->f()V

    .line 115
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v0

    .line 116
    iget v2, p0, Lcom/roblox/client/friends/c;->a:I

    .line 119
    invoke-static {}, Lcom/roblox/client/friends/nearby/a/a;->aq()Lcom/roblox/client/friends/nearby/a/a;

    move-result-object v3

    .line 117
    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    .line 124
    :cond_0
    iput-object v1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "FragmentNearbyUsers"

    .line 128
    invoke-direct {p0, v0}, Lcom/roblox/client/friends/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/roblox/client/friends/c;->b:Landroidx/fragment/app/g;

    const-string v1, "PendingRequestsFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/roblox/client/v;

    invoke-direct {v0}, Lcom/roblox/client/v;-><init>()V

    .line 143
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 144
    invoke-static {}, Lcom/roblox/client/u;->S()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEFAULT_URL"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 147
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v2

    .line 148
    iget v3, p0, Lcom/roblox/client/friends/c;->a:I

    .line 149
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->A()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/roblox/client/friends/c;->h()Landroidx/fragment/app/k;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()V

    .line 161
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/roblox/client/friends/c;->c:Ljava/lang/String;

    return-void
.end method
