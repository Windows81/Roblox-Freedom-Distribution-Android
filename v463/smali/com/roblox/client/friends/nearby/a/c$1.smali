.class Lcom/roblox/client/friends/nearby/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/a/c;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$f$c;Landroidx/recyclerview/widget/RecyclerView$f$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/hdodenhof/circleimageview/CircleImageView;

.field final synthetic b:Lcom/roblox/client/friends/nearby/a/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/a/c;Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/c$1;->b:Lcom/roblox/client/friends/nearby/a/c;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/a/c$1;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/c$1;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    sget v1, Lcom/roblox/client/o$e;->empty_drawable:I

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/c$1;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/c$1;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setScaleX(F)V

    .line 114
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/c$1;->a:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setScaleY(F)V

    return-void
.end method
