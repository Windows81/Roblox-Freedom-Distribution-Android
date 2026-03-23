.class public Lcom/roblox/client/friends/nearby/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/a/a;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/a/a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Lcom/c/a/t;->a(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$e;->nearby_default_thumbnail:I

    .line 41
    invoke-virtual {p2, v0}, Lcom/c/a/x;->a(I)Lcom/c/a/x;

    move-result-object p2

    .line 42
    invoke-virtual {p2, p1}, Lcom/c/a/x;->a(Landroid/widget/ImageView;)V

    return-void
.end method
