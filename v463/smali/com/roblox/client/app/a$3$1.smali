.class Lcom/roblox/client/app/a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/app/a$3;->onItemSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/app/d;

.field final synthetic b:Lcom/roblox/client/app/a$3;


# direct methods
.method constructor <init>(Lcom/roblox/client/app/a$3;Lcom/roblox/client/app/d;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/roblox/client/app/a$3$1;->b:Lcom/roblox/client/app/a$3;

    iput-object p2, p0, Lcom/roblox/client/app/a$3$1;->a:Lcom/roblox/client/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/roblox/client/app/a$3$1;->b:Lcom/roblox/client/app/a$3;

    iget-object v0, v0, Lcom/roblox/client/app/a$3;->a:Lcom/roblox/client/app/a;

    invoke-static {v0}, Lcom/roblox/client/app/a;->a(Lcom/roblox/client/app/a;)Lcom/roblox/client/app/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/app/a$3$1;->a:Lcom/roblox/client/app/d;

    invoke-interface {v0, v1}, Lcom/roblox/client/app/a$a;->a(Lcom/roblox/client/app/d;)V

    return-void
.end method
