.class Lcom/roblox/client/app/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/app/a$2;->onItemSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/app/a$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/app/a$2;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/roblox/client/app/a$2$1;->a:Lcom/roblox/client/app/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/roblox/client/app/a$2$1;->a:Lcom/roblox/client/app/a$2;

    iget-object v0, v0, Lcom/roblox/client/app/a$2;->a:Lcom/roblox/client/app/a;

    invoke-static {v0}, Lcom/roblox/client/app/a;->a(Lcom/roblox/client/app/a;)Lcom/roblox/client/app/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/app/a$a;->A()V

    return-void
.end method
