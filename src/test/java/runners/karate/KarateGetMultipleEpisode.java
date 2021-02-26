package runners.karate;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(
        features = {"src/test/resources/features/karate/karate_get_multipleepisodes.feature"}
)
public class KarateGetMultipleEpisode {
}
