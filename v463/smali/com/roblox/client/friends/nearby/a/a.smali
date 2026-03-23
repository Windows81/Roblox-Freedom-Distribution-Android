.class public Lcom/roblox/client/friends/nearby/a/a;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/nearby/a/a$a;
    }
.end annotation


# instance fields
.field private as:Lcom/roblox/client/friends/nearby/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/a/a;)Lcom/roblox/client/friends/nearby/a/a$a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/a/a;->as:Lcom/roblox/client/friends/nearby/a/a$a;

    return-object p0
.end method

.method public static aq()Lcom/roblox/client/friends/nearby/a/a;
    .locals 1

    .line 45
    new-instance v0, Lcom/roblox/client/friends/nearby/a/a;

    invoke-direct {v0}, Lcom/roblox/client/friends/nearby/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 52
    sget p3, Lcom/roblox/client/o$g;->fragment_nearby_presentation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lcom/roblox/client/o$f;->nearby_presentation_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/friends/nearby/a/a$1;

    invoke-direct {p3, p0}, Lcom/roblox/client/friends/nearby/a/a$1;-><init>(Lcom/roblox/client/friends/nearby/a/a;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget p2, Lcom/roblox/client/o$f;->nearby_presentation_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxTextView;

    .line 66
    sget p3, Lcom/roblox/client/o$j;->Features_Nearby_Label_LearnMore:I

    invoke-virtual {p0, p3}, Lcom/roblox/client/friends/nearby/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    sget p3, Lcom/roblox/client/o$j;->Features_Nearby_Label_IntroText:I

    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {p0, p3, v1}, Lcom/roblox/client/friends/nearby/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 70
    new-instance v8, Lcom/roblox/client/ae/a/d;

    .line 72
    invoke-static {}, Lcom/roblox/client/b;->bn()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/a/a;->p()Landroid/content/Context;

    move-result-object v3

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v5, v1

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/ae/a/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    new-array v1, v7, [Lcom/roblox/client/ae/a/a;

    aput-object v8, v1, v0

    .line 77
    invoke-static {p2, p3, v1}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 92
    instance-of v0, p1, Lcom/roblox/client/friends/nearby/a/a$a;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/roblox/client/friends/nearby/a/a$a;

    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/a;->as:Lcom/roblox/client/friends/nearby/a/a$a;

    return-void

    .line 95
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

.method public f()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/roblox/client/friends/nearby/a/a;->as:Lcom/roblox/client/friends/nearby/a/a$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    const-string v0, "nearbyPresentation"

    .line 86
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method
