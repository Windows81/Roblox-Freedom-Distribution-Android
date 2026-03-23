.class public interface abstract Lc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lc/p$1;

    invoke-direct {v0}, Lc/p$1;-><init>()V

    sput-object v0, Lc/p;->a:Lc/p;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
