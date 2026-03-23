.class Lcom/roblox/client/h/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/c;->a(Lcom/roblox/client/e/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e/h;

.field final synthetic b:Lcom/roblox/client/h/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/c;Lcom/roblox/client/e/h;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/roblox/client/h/c$1;->b:Lcom/roblox/client/h/c;

    iput-object p2, p0, Lcom/roblox/client/h/c$1;->a:Lcom/roblox/client/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/roblox/client/h/c$1;->b:Lcom/roblox/client/h/c;

    invoke-static {v0}, Lcom/roblox/client/h/c;->a(Lcom/roblox/client/h/c;)Lcom/roblox/client/h/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/h/c$1;->a:Lcom/roblox/client/e/h;

    iget v1, v1, Lcom/roblox/client/e/h;->d:I

    invoke-interface {v0, v1}, Lcom/roblox/client/h/c$a;->a(I)V

    .line 84
    return-void
.end method
