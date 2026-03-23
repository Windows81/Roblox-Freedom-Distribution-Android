.class Lcom/roblox/client/h/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/d;->a(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/roblox/client/h/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/d;ZII)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/roblox/client/h/d$1;->d:Lcom/roblox/client/h/d;

    iput-boolean p2, p0, Lcom/roblox/client/h/d$1;->a:Z

    iput p3, p0, Lcom/roblox/client/h/d$1;->b:I

    iput p4, p0, Lcom/roblox/client/h/d$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/roblox/client/h/d$1;->d:Lcom/roblox/client/h/d;

    invoke-static {v0}, Lcom/roblox/client/h/d;->a(Lcom/roblox/client/h/d;)Lcom/roblox/client/h/d$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/h/d$1;->a:Z

    iget v2, p0, Lcom/roblox/client/h/d$1;->b:I

    iget v3, p0, Lcom/roblox/client/h/d$1;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/roblox/client/h/d$a;->a(ZII)V

    .line 141
    return-void
.end method
