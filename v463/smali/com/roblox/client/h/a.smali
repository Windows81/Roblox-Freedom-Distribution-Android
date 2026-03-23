.class public abstract Lcom/roblox/client/h/a;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final c:Landroid/widget/ImageView;

.field public final d:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final e:Landroid/widget/RelativeLayout;

.field public final f:Lde/hdodenhof/circleimageview/CircleImageView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field protected i:Lcom/roblox/client/friends/nearby/b/a/a;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/RelativeLayout;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/roblox/client/h/a;->c:Landroid/widget/ImageView;

    .line 49
    iput-object p5, p0, Lcom/roblox/client/h/a;->d:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 50
    iput-object p6, p0, Lcom/roblox/client/h/a;->e:Landroid/widget/RelativeLayout;

    .line 51
    iput-object p7, p0, Lcom/roblox/client/h/a;->f:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 52
    iput-object p8, p0, Lcom/roblox/client/h/a;->g:Landroid/widget/TextView;

    .line 53
    iput-object p9, p0, Lcom/roblox/client/h/a;->h:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/roblox/client/friends/nearby/b/a/a;)V
.end method

.method public h()Lcom/roblox/client/friends/nearby/b/a/a;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/roblox/client/h/a;->i:Lcom/roblox/client/friends/nearby/b/a/a;

    return-object v0
.end method
