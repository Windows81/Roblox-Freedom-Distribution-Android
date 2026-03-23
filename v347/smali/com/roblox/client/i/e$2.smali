.class Lcom/roblox/client/i/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/e;->b(Lcom/roblox/client/i/e$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/e$c;

.field final synthetic b:Lcom/roblox/client/i/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/e;Lcom/roblox/client/i/e$c;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/roblox/client/i/e$2;->b:Lcom/roblox/client/i/e;

    iput-object p2, p0, Lcom/roblox/client/i/e$2;->a:Lcom/roblox/client/i/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/e$2;->b:Lcom/roblox/client/i/e;

    invoke-static {v0}, Lcom/roblox/client/i/e;->a(Lcom/roblox/client/i/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/e$2;->a:Lcom/roblox/client/i/e$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void
.end method
