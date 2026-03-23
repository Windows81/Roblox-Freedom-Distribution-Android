.class Lcom/roblox/client/login/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/a;


# direct methods
.method private constructor <init>(Lcom/roblox/client/login/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/roblox/client/login/a$a;->a:Lcom/roblox/client/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/login/a;Lcom/roblox/client/login/a$1;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/roblox/client/login/a$a;-><init>(Lcom/roblox/client/login/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 82
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/login/a$a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/a$a$1;-><init>(Lcom/roblox/client/login/a$a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/abtesting/a;->c(Lcom/roblox/abtesting/a$a;)V

    return-void
.end method
