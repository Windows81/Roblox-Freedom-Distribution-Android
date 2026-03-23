.class Lcom/roblox/client/friends/nearby/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/a/e;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/roblox/client/friends/nearby/a/e;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/e$a;->a:Lcom/roblox/client/friends/nearby/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/roblox/client/friends/nearby/a/e$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/friends/nearby/a/e;Lcom/roblox/client/friends/nearby/a/e$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/a/e$a;-><init>(Lcom/roblox/client/friends/nearby/a/e;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 87
    sget v0, Lcom/roblox/client/o$f;->nearby_user_img_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 99
    :cond_1
    iget-boolean p2, p0, Lcom/roblox/client/friends/nearby/a/e$a;->b:Z

    if-eqz p2, :cond_3

    .line 100
    iput-boolean v0, p0, Lcom/roblox/client/friends/nearby/a/e$a;->b:Z

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 102
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 90
    :cond_2
    iput-boolean v1, p0, Lcom/roblox/client/friends/nearby/a/e$a;->b:Z

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 92
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, -0x14

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0x14

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return v0
.end method
