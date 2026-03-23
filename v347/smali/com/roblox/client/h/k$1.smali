.class Lcom/roblox/client/h/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/k;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/h/k;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/k;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/roblox/client/h/k$1;->a:Lcom/roblox/client/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roblox/client/h/k$1;->a:Lcom/roblox/client/h/k;

    invoke-static {v0}, Lcom/roblox/client/h/k;->a(Lcom/roblox/client/h/k;)Lcom/roblox/client/h/k$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/h/k$a;->a()V

    .line 67
    return-void
.end method
