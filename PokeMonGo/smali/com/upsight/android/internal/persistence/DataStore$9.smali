.class Lcom/upsight/android/internal/persistence/DataStore$9;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/persistence/DataStore;->remove(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/DataStore;

.field final synthetic val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V
    .registers 3

    .prologue
    .line 183
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore$9;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    iput-object p2, p0, Lcom/upsight/android/internal/persistence/DataStore$9;->val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore$9;->val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;

    invoke-interface {v0, p1}, Lcom/upsight/android/persistence/UpsightDataStoreListener;->onSuccess(Ljava/lang/Object;)V

    .line 187
    return-void
.end method
