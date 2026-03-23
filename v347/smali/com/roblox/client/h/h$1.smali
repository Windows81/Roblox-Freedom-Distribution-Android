.class Lcom/roblox/client/h/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/h;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/h/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/roblox/client/h/h$1;->b:Lcom/roblox/client/h/h;

    iput-object p2, p0, Lcom/roblox/client/h/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/roblox/client/h/h$1;->b:Lcom/roblox/client/h/h;

    invoke-static {v0}, Lcom/roblox/client/h/h;->a(Lcom/roblox/client/h/h;)Lcom/roblox/client/h/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/h/h$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/roblox/client/h/h$a;->a(Ljava/lang/String;)V

    .line 100
    return-void
.end method
