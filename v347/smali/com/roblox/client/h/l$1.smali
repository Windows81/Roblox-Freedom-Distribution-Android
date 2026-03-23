.class Lcom/roblox/client/h/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/l;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/h/l;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/l;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/roblox/client/h/l$1;->a:Lcom/roblox/client/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/roblox/client/h/l$1;->a:Lcom/roblox/client/h/l;

    invoke-static {v0}, Lcom/roblox/client/h/l;->a(Lcom/roblox/client/h/l;)Lcom/roblox/client/h/l$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/h/l$a;->a()V

    .line 87
    return-void
.end method
