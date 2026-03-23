.class Lcom/roblox/client/g/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/roblox/client/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/roblox/client/g/b;

    invoke-direct {v0}, Lcom/roblox/client/g/b;-><init>()V

    sput-object v0, Lcom/roblox/client/g/b$b;->a:Lcom/roblox/client/g/b;

    return-void
.end method
