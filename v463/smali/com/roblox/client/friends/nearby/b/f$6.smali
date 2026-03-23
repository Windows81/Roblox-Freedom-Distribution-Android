.class Lcom/roblox/client/friends/nearby/b/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/roblox/client/friends/c/c;

.field final synthetic c:Lcom/roblox/client/friends/nearby/b/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f;ILcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$6;->c:Lcom/roblox/client/friends/nearby/b/f;

    iput p2, p0, Lcom/roblox/client/friends/nearby/b/f$6;->a:I

    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/f$6;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$6;->c:Lcom/roblox/client/friends/nearby/b/f;

    iget v1, p0, Lcom/roblox/client/friends/nearby/b/f$6;->a:I

    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f$6;->b:Lcom/roblox/client/friends/c/c;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;ILcom/roblox/client/friends/c/c;)V

    return-void
.end method
