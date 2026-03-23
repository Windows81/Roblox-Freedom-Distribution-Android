.class Lcom/roblox/a/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/a/d$a;->executeRoblox(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/a/d$a;


# direct methods
.method constructor <init>(Lcom/roblox/a/d$a;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/roblox/a/d$a$1;->b:Lcom/roblox/a/d$a;

    iput-object p2, p0, Lcom/roblox/a/d$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/roblox/a/d$a$1;->b:Lcom/roblox/a/d$a;

    iget-object v0, v0, Lcom/roblox/a/d$a;->a:Lcom/roblox/a/d;

    iget-object v1, p0, Lcom/roblox/a/d$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/a/d;->a(Ljava/lang/String;)V

    return-void
.end method
