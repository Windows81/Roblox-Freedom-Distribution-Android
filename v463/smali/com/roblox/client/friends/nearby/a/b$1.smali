.class Lcom/roblox/client/friends/nearby/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/a/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/a/b;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/b$1;->a:Lcom/roblox/client/friends/nearby/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b$1;->a:Lcom/roblox/client/friends/nearby/a/b;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/a/b;->a(Lcom/roblox/client/friends/nearby/a/b;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
