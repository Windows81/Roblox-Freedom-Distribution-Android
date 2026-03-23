.class Lcom/roblox/client/h/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/h;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/h/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/roblox/client/h/h$2;->c:Lcom/roblox/client/h/h;

    iput-object p2, p0, Lcom/roblox/client/h/h$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/h/h$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/roblox/client/h/h$2;->c:Lcom/roblox/client/h/h;

    invoke-static {v0}, Lcom/roblox/client/h/h;->a(Lcom/roblox/client/h/h;)Lcom/roblox/client/h/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/h/h$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/h/h$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/h/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
