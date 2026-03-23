.class public Lcom/roblox/client/signup/multiscreen/e/a$a;
.super Landroidx/lifecycle/v$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/multiscreen/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/roblox/client/g/a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/g/a;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroidx/lifecycle/v$c;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/a$a;->a:Lcom/roblox/client/g/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 89
    new-instance p1, Lcom/roblox/client/signup/multiscreen/e/a;

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/a$a;->a:Lcom/roblox/client/g/a;

    invoke-direct {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/a;-><init>(Lcom/roblox/client/g/a;)V

    return-object p1
.end method
