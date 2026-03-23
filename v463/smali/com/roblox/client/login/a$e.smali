.class Lcom/roblox/client/login/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/a;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/roblox/client/login/a$e;->a:Lcom/roblox/client/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 175
    new-instance v0, Lcom/roblox/client/ab/b;

    invoke-direct {v0}, Lcom/roblox/client/ab/b;-><init>()V

    new-instance v1, Lcom/roblox/client/login/a$e$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/a$e$1;-><init>(Lcom/roblox/client/login/a$e;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/ab/b;->a(Lcom/roblox/client/ab/b$a;)V

    return-void
.end method
