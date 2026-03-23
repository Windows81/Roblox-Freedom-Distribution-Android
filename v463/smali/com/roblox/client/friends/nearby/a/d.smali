.class public Lcom/roblox/client/friends/nearby/a/d;
.super Lcom/google/android/material/bottomsheet/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/nearby/a/d$a;
    }
.end annotation


# instance fields
.field private ag:J

.field private ah:Lcom/roblox/client/friends/nearby/a/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/a/d;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/roblox/client/friends/nearby/a/d;->ag:J

    return-wide v0
.end method

.method public static a(J)Lcom/roblox/client/friends/nearby/a/d;
    .locals 3

    .line 35
    new-instance v0, Lcom/roblox/client/friends/nearby/a/d;

    invoke-direct {v0}, Lcom/roblox/client/friends/nearby/a/d;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "USER_ID_BUNDLE_PARAM"

    .line 37
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/nearby/a/d;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/friends/nearby/a/d;)Lcom/roblox/client/friends/nearby/a/d$a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/a/d;->ah:Lcom/roblox/client/friends/nearby/a/d$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcom/roblox/client/o$g;->nearby_users_bottom_sheet:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget p2, Lcom/roblox/client/o$f;->nearby_friend_profile_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/friends/nearby/a/d$1;

    invoke-direct {p3, p0}, Lcom/roblox/client/friends/nearby/a/d$1;-><init>(Lcom/roblox/client/friends/nearby/a/d;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p2, Lcom/roblox/client/o$f;->nearby_friend_cancel_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/friends/nearby/a/d$2;

    invoke-direct {p3, p0}, Lcom/roblox/client/friends/nearby/a/d$2;-><init>(Lcom/roblox/client/friends/nearby/a/d;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->a(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/a/d;->w()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/roblox/client/friends/nearby/a/d$a;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/a/d;->w()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/friends/nearby/a/d$a;

    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/d;->ah:Lcom/roblox/client/friends/nearby/a/d$a;

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->b(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/a/d;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/a/d;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "USER_ID_BUNDLE_PARAM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/friends/nearby/a/d;->ag:J

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/b;->f()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/roblox/client/friends/nearby/a/d;->ah:Lcom/roblox/client/friends/nearby/a/d$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/b;->h()V

    const-string v0, "nearbyContextMenu"

    .line 80
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method
