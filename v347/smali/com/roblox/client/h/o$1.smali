.class Lcom/roblox/client/h/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/o;->a(ZLcom/roblox/client/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/roblox/client/e/l;

.field final synthetic c:Lcom/roblox/client/h/o;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/o;ZLcom/roblox/client/e/l;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/roblox/client/h/o$1;->c:Lcom/roblox/client/h/o;

    iput-boolean p2, p0, Lcom/roblox/client/h/o$1;->a:Z

    iput-object p3, p0, Lcom/roblox/client/h/o$1;->b:Lcom/roblox/client/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/roblox/client/h/o$1;->c:Lcom/roblox/client/h/o;

    invoke-static {v0}, Lcom/roblox/client/h/o;->a(Lcom/roblox/client/h/o;)Lcom/roblox/client/h/o$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/h/o$1;->a:Z

    iget-object v2, p0, Lcom/roblox/client/h/o$1;->b:Lcom/roblox/client/e/l;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/h/o$a;->a(ZLcom/roblox/client/e/l;)V

    .line 101
    return-void
.end method
