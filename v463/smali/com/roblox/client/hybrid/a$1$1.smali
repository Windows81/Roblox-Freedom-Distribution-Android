.class Lcom/roblox/client/hybrid/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/hybrid/a$1;->onItemSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/hybrid/a$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/hybrid/a$1;Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/roblox/client/hybrid/a$1$1;->b:Lcom/roblox/client/hybrid/a$1;

    iput-object p2, p0, Lcom/roblox/client/hybrid/a$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/roblox/client/hybrid/a$1$1;->b:Lcom/roblox/client/hybrid/a$1;

    iget-object v0, v0, Lcom/roblox/client/hybrid/a$1;->a:Lcom/roblox/client/hybrid/a;

    iget-object v1, p0, Lcom/roblox/client/hybrid/a$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/hybrid/a;->b(Ljava/lang/String;)V

    return-void
.end method
