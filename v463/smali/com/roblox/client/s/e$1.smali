.class Lcom/roblox/client/s/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/e;->a(Lcom/roblox/client/s/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/s/e$b;

.field final synthetic b:Lcom/roblox/client/s/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/e;Lcom/roblox/client/s/e$b;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/roblox/client/s/e$1;->b:Lcom/roblox/client/s/e;

    iput-object p2, p0, Lcom/roblox/client/s/e$1;->a:Lcom/roblox/client/s/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/roblox/client/s/e$1;->b:Lcom/roblox/client/s/e;

    invoke-static {v0}, Lcom/roblox/client/s/e;->a(Lcom/roblox/client/s/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/s/e$1;->a:Lcom/roblox/client/s/e$b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
