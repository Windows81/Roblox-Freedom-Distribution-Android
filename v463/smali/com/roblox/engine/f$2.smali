.class Lcom/roblox/engine/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/engine/f;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/engine/f;


# direct methods
.method constructor <init>(Lcom/roblox/engine/f;Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/roblox/engine/f$2;->b:Lcom/roblox/engine/f;

    iput-object p2, p0, Lcom/roblox/engine/f$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "rbx.xapkmanager"

    const-string v1, "unpackAssetsAsync: RUN ....."

    .line 83
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/roblox/engine/f$2;->b:Lcom/roblox/engine/f;

    iget-object v2, p0, Lcom/roblox/engine/f$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/roblox/engine/f;->c(Landroid/content/Context;)Ljava/lang/String;

    const-string v1, "unpackAssetsAsync: ...... DONE"

    .line 85
    invoke-static {v0, v1}, Lcom/roblox/platform/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Lcom/roblox/engine/f;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
